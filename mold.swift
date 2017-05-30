
//  Created by Rijo George.
//  Copyright © 2017  Rijo George. All rights reserved.
//

import Foundation

let destUrl = "/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application/"

func copyTemplate(){

    let fileManager = FileManager.default
    let destinationPath = bash(command: "xcode-select", arguments: ["--print-path"]).appending(destUrl)
    do {
        if !fileManager.fileExists(atPath:"\(destinationPath)/\("Mold")"){
        
            try fileManager.copyItem(atPath: "Mold", toPath: "\(destinationPath)/\("Mold")")
            
            print("Viper template is installed. You can use it from File -> New File")
            
        }else{
            
            try _ = fileManager.replaceItemAt(URL(fileURLWithPath:"\(destinationPath)/\("Mold")"), withItemAt: URL(fileURLWithPath:"Mold"))
            
            print("Viper template updated.")
        }
    }
    catch let error as NSError {
        print("Error: \(error.localizedFailureReason!)")
    }
}

func shell(launchPath: String, arguments: [String]) -> String
{
    let process = Process()
    process.launchPath = launchPath
    process.arguments = arguments
    
    let handle = Pipe()
    process.standardOutput = handle
    process.launch()
    
    let data = handle.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: String.Encoding.utf8)!
    if output.characters.count > 0 {
        let lastIndex = output.index(before: output.endIndex)
        return output[output.startIndex ..< lastIndex]
    }
    return output
}

func bash(command: String, arguments: [String]) -> String {
    let command = shell(launchPath: "/bin/bash", arguments: [ "-l", "-c", "which \(command)" ])
    return shell(launchPath: command, arguments: arguments)
}

copyTemplate()
