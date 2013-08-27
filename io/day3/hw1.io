# 1. Enhance the XML program to add spaces to show the indentation structure

Builder := Object clone

Builder indentLevel := 0

Builder forward = method(
    makeIndent := method(
         spaces := ""
         indentLevel repeat(spaces = spaces .. "  ")
         return spaces
    )

    writeln(makeIndent() .. "<", call message name, ">")
    indentLevel = indentLevel + 1
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence", writeln(makeIndent() .. content))
    )
    indentLevel = indentLevel - 1
    writeln(makeIndent() .. "</", call message name, ">")
)


Builder ul(
    li("Io"),
    li("Lua"),
    li("JavaScript")
)