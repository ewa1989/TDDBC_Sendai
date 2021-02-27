enum Greeting {
    case greet
    case please
}

class Sample {
    func say(behavior: Greeting = .please) -> String {
        switch behavior {
        case .greet:
            return "よろしくお願いします"
        default:
            return "Hello TDD BootCamp!"
        }
    }
}
