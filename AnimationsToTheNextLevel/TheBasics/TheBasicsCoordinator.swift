//
//  TheBasicsCoordinator.swift
//  AnimationsToTheNextLevel
//
//  Created by Aline Borges on 04/11/2018.
//  Copyright © 2018 Aline Borges. All rights reserved.
//

import UIKit

class TheBasicsCoordinator: FlowCoordinator {
    
    override func start() {
        showIntro()
    }
    
    func showIntro() {
        let view = TheBasicsIntro()
        view.coordinator = self
        self.push(view)
        self.mainView.present(navigationController, animated: true, completion: nil)
    }
    
    override func handle(_ action: Event) {
        switch action {
        case TheBasicsIntroAction.finish:
            self.parentCoordinator?.handle(action)
        default:
            break
        }
    }

}
