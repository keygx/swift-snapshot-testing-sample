import XCTest
import SnapshotTesting
@testable import swift_snapshot_testing_sample

class HomeSnapShotTests: XCTestCase {

    override func setUp() {}

    override func tearDown() {}

    func testHomeViewController() {
        record = false
        
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        let vc = storyboard.instantiateInitialViewController()!
        
        SnapshotDevices.allCases.forEach {
            assertSnapshot(matching: vc, as: .image(on: $0.config), named: $0.name)
        }
    }
}
