const ASM_FOLDER_PATH = "C:\\Lupin Sansei - Pandora no Isan\\";
const NL_FOLDER_PATH  = "C:\\Lupin Sansei - Pandora no Isan\\";
const ASM_FILE1 = "bank_FF.asm";
const ASM_FILE2 = "constants.inc";
const NL_FILE1 = "game.nes.7.nl";
const NL_FILE2 = "game.nes.ram.nl";
const SKIP_COMMERCIAL_AT = false;
const LOOP_WITH_COUNTER = false;
const COUNTER_LIMIT = 65;
const ONLY_LABEL = false;
const EXCLUDE_LIST = [ '0005', '0011', '0012', '001A', '0039', '003A' ];

function getBankNl()
{
    var array = [];
    var asmFile = FileSystem.openTextFile(ASM_FOLDER_PATH + ASM_FILE1, "utf8");
    try
    {
        var label = null;
        var comment = null;
        var counter = 0;
        while ((!LOOP_WITH_COUNTER || counter < COUNTER_LIMIT) && !asmFile.eof)
        {
            var line = asmFile.readLine();
            if (typeof line === 'string')
            {
                if (line.match("^.\\s.\\s.\\s.\\s.\\s.\\s0x0........:....:\\s..\\s..\\s..\\s\\s"))
                {
                    if (!ONLY_LABEL)
                    {
                        var parts = line.split(';');
                        if (parts.length > 1)
                        {
                            comment = Strings.trimLeft(parts[1]);
                            if (comment.length == 0)
                                comment = ';';
                        }
                    }

                    line = line.replace(/^.\s.\s.\s.\s.\s.\s0x0........:/, "");
                    var address = line[0] + line[1] + line[2] + line[3];
                    var value = parseInt(address, 16);

                    if (label != null || comment != null)
                    {
                        if (SKIP_COMMERCIAL_AT && label != null && label[0] == '@')
                            label = label.replace(/^\@/, "");

                        array[value] = {label: label, comment: comment};
                        label = null;
                        comment = null;
                    }
                }
                else
                {
                    var parts = line.split(':');
                    if (parts.length > 1)
                        label = parts[0];
                    else
                        label = null;
                }
            }
            counter++;
        }
    }
    finally
    {
        asmFile.close();
    }
    if (array.length == 0)
        return;

    var nlFile = FileSystem.createTextFile(NL_FOLDER_PATH + NL_FILE1, "utf8");
    try
    {
        for (var i = 0; i < array.length; i++)
        {
            if (typeof array[i] === 'undefined')
                continue;
            var value = Strings.format("%x", i);
            var label = '';
            var comment = '';
            if (array[i]['label'])
                label = array[i]['label'];
            if (array[i]['comment'])
                comment = array[i]['comment'];
            nlFile.writeLine("$"+value+"#"+label+"#"+comment);
        }
        //nlFile.writeLine();
    }
    finally
    {
        nlFile.close();
    }
}

function getVariablesNl()
{
    var array = [];
    var asmFile = FileSystem.openTextFile(ASM_FOLDER_PATH + ASM_FILE2, "utf8");
    try
    {
        var counter = 0;
        while ((!LOOP_WITH_COUNTER || counter < COUNTER_LIMIT) && !asmFile.eof)
        {
            var line = asmFile.readLine();
            if (typeof line === 'string')
            {
                var ramValue = null;
                var parts = line.split('=');
                if (parts.length > 1)
                    ramValue = Strings.trimLeft(parts[1]);
                if (ramValue != null && ramValue.match("^ram_"))
                {
                    ramValue = ramValue.replace(/^ram_/, "");
                    var address = ramValue[0] + ramValue[1] + ramValue[2] + ramValue[3];
                    var value = parseInt(address, 16);

                    var label = Strings.trimAll(parts[0]);
                    if (label && label.length > 0)
                        array[value] = {label: label};
                }
            }
            counter++;
        }
    }
    finally
    {
        asmFile.close();
    }
    if (array.length == 0)
        return;

    var nlFile = FileSystem.createTextFile(NL_FOLDER_PATH + NL_FILE2, "utf8");
    try
    {
        for (var i = 0; i < array.length; i++)
        {
            if (typeof array[i] === 'undefined')
                continue;
            var value = Strings.format("%x", i);
            if (value.length == 1)
                value = "000" + value;
            if (value.length == 2)
                value = "00" + value;
            if (value.length == 3)
                value = "0" + value;

            var found = false;
            for (var j = 0; j < array.length; j++)
            {
                if (EXCLUDE_LIST[j] == value)
                {
                    found = true;
                    break;
                }
            }
            if (found)
                continue;

            var label = array[i]['label'];
            nlFile.writeLine("$"+value+"#"+label+"#");
        }
        //nlFile.writeLine();
    }
    finally
    {
        nlFile.close();
    }
}