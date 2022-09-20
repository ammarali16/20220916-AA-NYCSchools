//
//  SchoolDetailsViewController.swift
//  20220916-AA-NYCSchools
//
//  Created by Ammar Ali on 9/16/22.
//

import UIKit

class SchoolDetailsViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var lblSchoolEmail: UILabel!
    @IBOutlet weak var lblSchoolWebsite: UILabel!
    @IBOutlet weak var lblSchoolPhoneNumber: UILabel!
    @IBOutlet weak var lblSchoolLocation: UILabel!
    @IBOutlet weak var lblSchoolNeighborhood: UILabel!
    
    @IBOutlet weak var lblAverageMathsScore: UILabel!
    @IBOutlet weak var lblAverageReadingScore: UILabel!
    @IBOutlet weak var lblAverageWritingScore: UILabel!
    
    // Model Class for High School Data
    var selectedSchoolModel: NYCHighSchoolModel!
    
    // ViewModel Object
    private var viewModel: SATScoreViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = selectedSchoolModel.schoolName
        lblSchoolEmail.text = selectedSchoolModel.schoolEmail ?? "N/A"
        lblSchoolWebsite.text = selectedSchoolModel.website
        lblSchoolWebsite.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(websiteTapped)))
        lblSchoolPhoneNumber.text = selectedSchoolModel.phoneNumber
        let location = selectedSchoolModel.location?.components(separatedBy: "(")
        if let schoolLocation = location?.first {
            lblSchoolLocation.text = schoolLocation
        }
        lblSchoolNeighborhood.text = selectedSchoolModel.neighborhood
        getSATScores()
    }
    
    // MARK: Hyperlink
    // As the website doesn't http or https protocols that is why I have added "https://" before the website to run these site on Safari.
    // We can also use Attributed String for Hyperlink and it is also considered best practise.
    @objc func websiteTapped() {
        if let website = selectedSchoolModel.website {
            if let websiteURL = URL(string: website.contains("http") ? website : "https://\(website)") {
                UIApplication.shared.open(websiteURL)
            }
            
        }
    }
    
    // Binding ViewController with ViewModel
    func getSATScores() {
        viewModel = SATScoreViewModel()
        viewModel.bindSATScoreViewModelToController = {
            DispatchQueue.main.async {
                self.setSATScores()
            }
        }
    }
    
    // Set Sat Scores
    func setSATScores() {
        if let satScore = viewModel.satScores.filter({$0.dbn == selectedSchoolModel.dbn}).first {
            self.lblAverageMathsScore.text = satScore.satMathAvgScore ?? "N/A"
            self.lblAverageReadingScore.text = satScore.satCriticalReadingAvgScore ?? "N/A"
            self.lblAverageWritingScore.text = satScore.satWritingAvgScore ?? "N/A"
        }
    }
    
    
    // MARK: Open Maps
    // We are using Apple Maps URL with Location Coordinates.
    // This will open Safari Link with Apple Maps.
    // The better for it to be used is that we can open Maps Apps.
    @IBAction func btnOpenLocation(_ sender: Any) {
        let url = "http://maps.apple.com/maps?saddr=\(selectedSchoolModel.latitude ?? ""),\(selectedSchoolModel.longitude ?? "")"
        UIApplication.shared.open(URL(string: url)!)
    }
}
