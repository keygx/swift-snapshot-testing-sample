import SnapshotTesting

enum SnapshotDevices: CaseIterable {
    case iPhoneXsMax
    case iPhoneX
    case iPhone8Plus
    case iPhoneXr
    case iPhone8
    case iPhoneSe
    
    var config: SnapshotTesting.ViewImageConfig {
        switch self {
        case .iPhoneXsMax:
            return .iPhoneXsMax(.portrait)
        case .iPhoneX:
            return .iPhoneX(.portrait)
        case .iPhone8Plus:
            return .iPhone8Plus(.portrait)
        case .iPhoneXr:
            return .iPhoneXr(.portrait)
        case .iPhone8:
            return .iPhone8(.portrait)
        case .iPhoneSe:
            return .iPhoneSe(.portrait)
        }
    }
    
    var name: String {
        switch self {
        case .iPhoneXsMax:
            return "iPhoneXsMax_3x"
        case .iPhoneX:
            return "iPhoneX_3x"
        case .iPhone8Plus:
            return "iPhone8Plus_3x"
        case .iPhoneXr:
            return "iPhoneXr_2x"
        case .iPhone8:
            return "iPhone8_2x"
        case .iPhoneSe:
            return "iPhoneSe_2x"
        }
    }
}
