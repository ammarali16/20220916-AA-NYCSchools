//
//  SchoolsListViewController.swift
//  20220916-AA-NYCSchools
//
//  Created by Ammar Ali on 9/16/22.
//

import UIKit

class SchoolsListViewController: UIViewController {

    @IBOutlet weak var schoolsTblView: UITableView!
    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    // ViewModel Object
    private var viewModel: NYCHighSchoolViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "NYC High Schools"
        getSchoolsDataFromServer()
    }

    //Binding ViewController with ViewModel.
    func getSchoolsDataFromServer() {
        loader.startAnimating()
        viewModel = NYCHighSchoolViewModel()
        viewModel.bindSchoolViewModelToController = {
            DispatchQueue.main.async {
                self.loader.stopAnimating()
                self.schoolsTblView.delegate = self
                self.schoolsTblView.dataSource = self
                self.schoolsTblView.reloadData()
                
            }
        }
    }

}


// MARK: TableView Controller Extension
extension SchoolsListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.schools.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SchoolsListTableViewCell", for: indexPath) as! SchoolsListTableViewCell
        let school = viewModel.schools[indexPath.row]
        cell.lblSchoolName.text = school.schoolName
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let school = viewModel.schools[indexPath.row]
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "SchoolDetailsViewController") as! SchoolDetailsViewController
        detailVC.selectedSchoolModel = school
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
