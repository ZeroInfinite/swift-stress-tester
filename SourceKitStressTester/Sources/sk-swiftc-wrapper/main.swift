//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2018 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import Foundation
import SwiftCWrapper
import Basic

let wrapper = SwiftCWrapperTool(arguments: CommandLine.arguments,
                                environment: ProcessInfo.processInfo.environment)
do {
  let status = try wrapper.run()
  exit(status)
} catch {
  let prefix = CommandLine.arguments.first!
  stderrStream <<< "\(prefix): \(error)\n"
  stderrStream.flush()
  exit(EXIT_FAILURE)
}
