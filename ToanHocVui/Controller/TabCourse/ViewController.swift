//
//  ViewController.swift
//  ToanHocVui
//
//  Created by Trung iOS on 3/16/20.
//  Copyright © 2020 Fighting. All rights reserved.
//

import UIKit

struct Course {
    var title = ""
    var numberCourse = 0
    
    init(title: String, numberCourse: Int) {
        self.title = title
        self.numberCourse = numberCourse
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayCourse = [Course]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupData()
        setupTableView()
    }
    
    func setupData() {
        arrayCourse = [Course(title: "Bài tập trắc nghiệm", numberCourse: 40),
                        Course(title: "Bài tập đúng sai", numberCourse: 54),
                        Course(title: "Bài tập điền ô trống", numberCourse: 30),
                        Course(title: "Bài tập tổng hợp", numberCourse: 10),
                        Course(title: "Bài kiếm tra", numberCourse: 5)]
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "CourseCell", bundle: nil), forCellReuseIdentifier: "courseCell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCourse.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "courseCell") as! CourseCell
        let course = arrayCourse[indexPath.row]
        cell.lblTitle.text = course.title
        cell.lblSubtitle.text = "Số lượng: \(course.numberCourse) bài tập"
        cell.btnStart.tag = indexPath.row
        cell.btnStart.addTarget(self, action: #selector(startDoing), for: .touchUpInside)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    @objc func startDoing(sender: UIButton) {
        let index = sender.tag
        switch index {
        case 0:
            let vc = Quiz4AnswersVC(nibName: "Quiz4AnswersVC", bundle: nil)
            vc.modalPresentationStyle = .fullScreen
            vc.modalTransitionStyle = .crossDissolve
            self.present(vc, animated: true, completion: nil)
        default:
            break
        }
    }
}

