project "Mono.Cecil"
    
    SetupManagedDependencyProject()
    
    kind "SharedLib"
    language "C#"
    
    files 
    { 
        "./Mono*/**.cs",
        "./System.Runtime.CompilerServices/**.cs"
    }

    buildoptions { "/nowarn:1685" }
    
    links
    {
        "System.Core"
    }

project "Mono.Cecil.Pdb"

    SetupManagedDependencyProject()

    kind "SharedLib"
    language "C#"

    buildoptions { "/nowarn:0649", "/nowarn:1685" }
    
    files 
    { 
        "./symbols/pdb/Microsoft.Cci.Pdb/**.cs",
        "./symbols/pdb/Mono.Cecil.Pdb/**.cs",
    }

    links
    {
        "System",
        "System.Core",
        "Mono.Cecil"
    }