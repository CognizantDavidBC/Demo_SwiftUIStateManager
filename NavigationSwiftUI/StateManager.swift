import Foundation
import Combine

class StateManager: ObservableObject {
    @Published var tabSelected = 1
    @Published var firstDetailShown = false
    @Published var selectedItem: String? = nil
    
    var subscriptions = Set<AnyCancellable>()
    
    init() {
        $firstDetailShown
            .filter { !$0 }
            .removeDuplicates()
            .sink { [unowned self] value in
                self.selectedItem = nil
            }
            .store(in: &subscriptions)
    }
    
    func goToFirstRootView() {
        firstDetailShown = false
    }
}
