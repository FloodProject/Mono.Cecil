project "Mono.Cecil"
    
    SetupManagedDependencyProject()
    
    kind "SharedLib"
    language "C#"
    
    files 
    { 
        "./Mono*/**.cs",
        "./System.Runtime.CompilerServices/**.cs"
    }
    
    links
    {
        "System.Core"
    }

project "Mono.Cecil.Pdb"

    SetupManagedDependencyProject()

    kind "SharedLib"
    language "C#"
    
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