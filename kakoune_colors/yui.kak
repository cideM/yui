##
## yui theme, by Florian Beeres @cidem
##

evaluate-commands %sh{
    foreground="rgb:eeeeed"
    foreground_alt="rgb:6d6d6d"
    background="rgb:383838"
    background_alt="rgb:454545"
    string="rgb:c8cc92"
    error="rgb:ed6a5a"
    comment="rgb:f1ab86"

    echo "
        face global value ${foreground}
        face global type ${foreground}
        face global variable ${foreground}
        face global module ${foreground}
        face global function ${foreground}
        face global string ${string}
        face global keyword ${foreground}
        face global operator ${foreground}
        face global attribute ${foreground}
        face global comment ${comment}+i
        face global meta ${foreground}
        face global builtin ${foreground}
    "

    ## markup
    echo "
        face global title ${foreground}+u
        face global header ${foreground}
        face global bold ${foreground}+b
        face global italic ${foreground}+i
        face global mono ${foreground}
        face global block ${foreground}
        face global link ${foreground}
        face global bullet ${foreground}
        face global list ${foreground}
    "

    ## builtin
    echo "
        face global Default ${foreground},${background}
        face global PrimarySelection ${foreground},${background_alt}
        face global SecondarySelection ${foreground_alt},${background_alt}
        face global PrimaryCursor ${background},${foreground}
        face global SecondaryCursor ${foreground},${foreground_alt}
        face global PrimaryCursorEol ${foreground},${foreground}
        face global SecondaryCursorEol ${foreground},${foreground}
        face global LineNumbers ${foreground},${background}
        face global LineNumberCursor ${foreground},${background}
        face global MenuForeground ${foreground},${background_alt}+bu
        face global MenuBackground ${foreground},${background_alt}
        face global MenuInfo ${foreground}
        face global Information ${foreground},${background_alt}
        face global Error ${error},${background_alt}+b
        face global StatusLine ${foreground},${background_alt}+b
        face global StatusLineMode ${foreground}
        face global StatusLineInfo ${foreground}
        face global StatusLineValue ${foreground}
        face global StatusCursor ${background},${foreground}
        face global Prompt ${foreground},${background_alt}
        face global MatchingChar ${error},${background}+bF
        face global BufferPadding ${foreground},${background}
    "
}
