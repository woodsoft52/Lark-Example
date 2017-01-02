import Evergreen
import Foundation
import LarkRuntime

 getLogger("Lark").logLevel = .warning

let hwsClient = HelloWorldServiceClient()

let r0 = try hwsClient.sayHello(sayHello: SayHello(name: "World", times: 2))
print(r0.sayHelloResult.string)

let r1 = try hwsClient.sayHello(sayHello: SayHello(name: nil, times: 1))
print(r1.sayHelloResult.string)

let r2 = try hwsClient.sayNothing(sayNothing: SayNothing())
print("_None_")

let r3 = try hwsClient.sayMaybeSomething(sayMaybeSomething: SayMaybeSomething(name: "Bouke"))
print(r3.sayMaybeSomethingResult ?? "_None_")

let r4 = try hwsClient.sayMaybeNothing(sayMaybeNothing: SayMaybeNothing(name: "Bouke"))
print(r4.sayMaybeNothingResult ?? "_None_")
