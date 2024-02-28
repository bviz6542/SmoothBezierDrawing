//
//  MainViewController.swift
//  SmoothBezierDrawing
//
//  Created by 정준우 on 2/28/24.
//

import UIKit

class MainViewController: UIViewController {
    
    let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "darkBlue")
        return view
    }()
    
    let penButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        if let image = UIImage(systemName: "pencil.line")?.withRenderingMode(.alwaysTemplate) {
            view.setImage(image, for: .normal)
        }
        view.tintColor = .white
        view.setTitleColor(.white, for: .normal)
        return view
    }()
    
    let eraserButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        if let image = UIImage(systemName: "eraser.line.dashed")?.withRenderingMode(.alwaysTemplate) {
            view.setImage(image, for: .normal)
        }
        view.tintColor = .white
        view.setTitleColor(.white, for: .normal)
        return view
    }()
    
    let highlighterButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        if let image = UIImage(systemName: "highlighter")?.withRenderingMode(.alwaysTemplate) {
            view.setImage(image, for: .normal)
        }
        view.tintColor = .white
        view.setTitleColor(.white, for: .normal)
        return view
    }()
    
//    let scrollView: UIScrollView = {
//        let view = UIScrollView()
//        view.backgroundColor = .clear
//        view.isScrollEnabled = false
//        view.pinchGestureRecognizer?.isEnabled = false
//        return view
//    }()
    
    let canvasView: CanvasView = {
        let view = CanvasView()
        view.backgroundColor = .clear
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        
        view.addSubview(headerView)
        headerView.addSubview(penButton)
        headerView.addSubview(eraserButton)
        headerView.addSubview(highlighterButton)
        view.addSubview(canvasView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        penButton.translatesAutoresizingMaskIntoConstraints = false
        eraserButton.translatesAutoresizingMaskIntoConstraints = false
        highlighterButton.translatesAutoresizingMaskIntoConstraints = false
        canvasView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 80),
        ])
        
        NSLayoutConstraint.activate([
            penButton.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 60),
            penButton.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10),
            penButton.widthAnchor.constraint(equalToConstant: 40),
            penButton.heightAnchor.constraint(equalToConstant: 40),
        ])
        
        NSLayoutConstraint.activate([
            eraserButton.leadingAnchor.constraint(equalTo: penButton.trailingAnchor, constant: 20),
            eraserButton.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10),
            eraserButton.widthAnchor.constraint(equalToConstant: 40),
            eraserButton.heightAnchor.constraint(equalToConstant: 40),
        ])
        
        NSLayoutConstraint.activate([
            highlighterButton.leadingAnchor.constraint(equalTo: eraserButton.trailingAnchor, constant: 20),
            highlighterButton.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10),
            highlighterButton.widthAnchor.constraint(equalToConstant: 40),
            highlighterButton.heightAnchor.constraint(equalToConstant: 40),
        ])
        
        NSLayoutConstraint.activate([
            canvasView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            canvasView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            canvasView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            canvasView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
