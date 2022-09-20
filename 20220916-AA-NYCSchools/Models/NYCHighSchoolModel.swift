//
//  NYCHighSchoolModel.swift
//  20220916-AA-NYCSchools
//
//  Created by Ammar Ali on 9/16/22.
//

import Foundation

// MARK: NYC HIGH SCHOOL DATA CLASS
struct NYCHighSchoolModel : Codable {

    let academicopportunities1 : String?
    let academicopportunities2 : String?
    let admissionspriority11 : String?
    let admissionspriority21 : String?
    let admissionspriority31 : String?
    let attendanceRate : String?
    let bbl : String?
    let bin : String?
    let boro : String?
    let borough : String?
    let buildingCode : String?
    let bus : String?
    let censusTract : String?
    let city : String?
    let code1 : String?
    let communityBoard : String?
    let councilDistrict : String?
    let dbn : String?
    let directions1 : String?
    let ellPrograms : String?
    let extracurricularActivities : String?
    let faxNumber : String?
    let finalgrades : String?
    let grade9geapplicants1 : String?
    let grade9geapplicantsperseat1 : String?
    let grade9gefilledflag1 : String?
    let grade9swdapplicants1 : String?
    let grade9swdapplicantsperseat1 : String?
    let grade9swdfilledflag1 : String?
    let grades2018 : String?
    let interest1 : String?
    let latitude : String?
    let location : String?
    let longitude : String?
    let method1 : String?
    let neighborhood : String?
    let nta : String?
    let offerRate1 : String?
    let overviewParagraph : String?
    let pctStuEnoughVariety : String?
    let pctStuSafe : String?
    let phoneNumber : String?
    let primaryAddressLine1 : String?
    let program1 : String?
    let requirement11 : String?
    let requirement21 : String?
    let requirement31 : String?
    let requirement41 : String?
    let requirement51 : String?
    let school10thSeats : String?
    let schoolAccessibilityDescription : String?
    let schoolEmail : String?
    let schoolName : String?
    let schoolSports : String?
    let seats101 : String?
    let seats9ge1 : String?
    let seats9swd1 : String?
    let stateCode : String?
    let subway : String?
    let totalStudents : String?
    let website : String?
    let zip : String?


    enum CodingKeys: String, CodingKey {
        case academicopportunities1 = "academicopportunities1"
        case academicopportunities2 = "academicopportunities2"
        case admissionspriority11 = "admissionspriority11"
        case admissionspriority21 = "admissionspriority21"
        case admissionspriority31 = "admissionspriority31"
        case attendanceRate = "attendance_rate"
        case bbl = "bbl"
        case bin = "bin"
        case boro = "boro"
        case borough = "borough"
        case buildingCode = "building_code"
        case bus = "bus"
        case censusTract = "census_tract"
        case city = "city"
        case code1 = "code1"
        case communityBoard = "community_board"
        case councilDistrict = "council_district"
        case dbn = "dbn"
        case directions1 = "directions1"
        case ellPrograms = "ell_programs"
        case extracurricularActivities = "extracurricular_activities"
        case faxNumber = "fax_number"
        case finalgrades = "finalgrades"
        case grade9geapplicants1 = "grade9geapplicants1"
        case grade9geapplicantsperseat1 = "grade9geapplicantsperseat1"
        case grade9gefilledflag1 = "grade9gefilledflag1"
        case grade9swdapplicants1 = "grade9swdapplicants1"
        case grade9swdapplicantsperseat1 = "grade9swdapplicantsperseat1"
        case grade9swdfilledflag1 = "grade9swdfilledflag1"
        case grades2018 = "grades2018"
        case interest1 = "interest1"
        case latitude = "latitude"
        case location = "location"
        case longitude = "longitude"
        case method1 = "method1"
        case neighborhood = "neighborhood"
        case nta = "nta"
        case offerRate1 = "offer_rate1"
        case overviewParagraph = "overview_paragraph"
        case pctStuEnoughVariety = "pct_stu_enough_variety"
        case pctStuSafe = "pct_stu_safe"
        case phoneNumber = "phone_number"
        case primaryAddressLine1 = "primary_address_line_1"
        case program1 = "program1"
        case requirement11 = "requirement1_1"
        case requirement21 = "requirement2_1"
        case requirement31 = "requirement3_1"
        case requirement41 = "requirement4_1"
        case requirement51 = "requirement5_1"
        case school10thSeats = "school_10th_seats"
        case schoolAccessibilityDescription = "school_accessibility_description"
        case schoolEmail = "school_email"
        case schoolName = "school_name"
        case schoolSports = "school_sports"
        case seats101 = "seats101"
        case seats9ge1 = "seats9ge1"
        case seats9swd1 = "seats9swd1"
        case stateCode = "state_code"
        case subway = "subway"
        case totalStudents = "total_students"
        case website = "website"
        case zip = "zip"
    }
    
    // MARK: We are populating Data Class from API Response
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        academicopportunities1 = try values.decodeIfPresent(String.self, forKey: .academicopportunities1)
        academicopportunities2 = try values.decodeIfPresent(String.self, forKey: .academicopportunities2)
        admissionspriority11 = try values.decodeIfPresent(String.self, forKey: .admissionspriority11)
        admissionspriority21 = try values.decodeIfPresent(String.self, forKey: .admissionspriority21)
        admissionspriority31 = try values.decodeIfPresent(String.self, forKey: .admissionspriority31)
        attendanceRate = try values.decodeIfPresent(String.self, forKey: .attendanceRate)
        bbl = try values.decodeIfPresent(String.self, forKey: .bbl)
        bin = try values.decodeIfPresent(String.self, forKey: .bin)
        boro = try values.decodeIfPresent(String.self, forKey: .boro)
        borough = try values.decodeIfPresent(String.self, forKey: .borough)
        buildingCode = try values.decodeIfPresent(String.self, forKey: .buildingCode)
        bus = try values.decodeIfPresent(String.self, forKey: .bus)
        censusTract = try values.decodeIfPresent(String.self, forKey: .censusTract)
        city = try values.decodeIfPresent(String.self, forKey: .city)
        code1 = try values.decodeIfPresent(String.self, forKey: .code1)
        communityBoard = try values.decodeIfPresent(String.self, forKey: .communityBoard)
        councilDistrict = try values.decodeIfPresent(String.self, forKey: .councilDistrict)
        dbn = try values.decodeIfPresent(String.self, forKey: .dbn)
        directions1 = try values.decodeIfPresent(String.self, forKey: .directions1)
        ellPrograms = try values.decodeIfPresent(String.self, forKey: .ellPrograms)
        extracurricularActivities = try values.decodeIfPresent(String.self, forKey: .extracurricularActivities)
        faxNumber = try values.decodeIfPresent(String.self, forKey: .faxNumber)
        finalgrades = try values.decodeIfPresent(String.self, forKey: .finalgrades)
        grade9geapplicants1 = try values.decodeIfPresent(String.self, forKey: .grade9geapplicants1)
        grade9geapplicantsperseat1 = try values.decodeIfPresent(String.self, forKey: .grade9geapplicantsperseat1)
        grade9gefilledflag1 = try values.decodeIfPresent(String.self, forKey: .grade9gefilledflag1)
        grade9swdapplicants1 = try values.decodeIfPresent(String.self, forKey: .grade9swdapplicants1)
        grade9swdapplicantsperseat1 = try values.decodeIfPresent(String.self, forKey: .grade9swdapplicantsperseat1)
        grade9swdfilledflag1 = try values.decodeIfPresent(String.self, forKey: .grade9swdfilledflag1)
        grades2018 = try values.decodeIfPresent(String.self, forKey: .grades2018)
        interest1 = try values.decodeIfPresent(String.self, forKey: .interest1)
        latitude = try values.decodeIfPresent(String.self, forKey: .latitude)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        longitude = try values.decodeIfPresent(String.self, forKey: .longitude)
        method1 = try values.decodeIfPresent(String.self, forKey: .method1)
        neighborhood = try values.decodeIfPresent(String.self, forKey: .neighborhood)
        nta = try values.decodeIfPresent(String.self, forKey: .nta)
        offerRate1 = try values.decodeIfPresent(String.self, forKey: .offerRate1)
        overviewParagraph = try values.decodeIfPresent(String.self, forKey: .overviewParagraph)
        pctStuEnoughVariety = try values.decodeIfPresent(String.self, forKey: .pctStuEnoughVariety)
        pctStuSafe = try values.decodeIfPresent(String.self, forKey: .pctStuSafe)
        phoneNumber = try values.decodeIfPresent(String.self, forKey: .phoneNumber)
        primaryAddressLine1 = try values.decodeIfPresent(String.self, forKey: .primaryAddressLine1)
        program1 = try values.decodeIfPresent(String.self, forKey: .program1)
        requirement11 = try values.decodeIfPresent(String.self, forKey: .requirement11)
        requirement21 = try values.decodeIfPresent(String.self, forKey: .requirement21)
        requirement31 = try values.decodeIfPresent(String.self, forKey: .requirement31)
        requirement41 = try values.decodeIfPresent(String.self, forKey: .requirement41)
        requirement51 = try values.decodeIfPresent(String.self, forKey: .requirement51)
        school10thSeats = try values.decodeIfPresent(String.self, forKey: .school10thSeats)
        schoolAccessibilityDescription = try values.decodeIfPresent(String.self, forKey: .schoolAccessibilityDescription)
        schoolEmail = try values.decodeIfPresent(String.self, forKey: .schoolEmail)
        schoolName = try values.decodeIfPresent(String.self, forKey: .schoolName)
        schoolSports = try values.decodeIfPresent(String.self, forKey: .schoolSports)
        seats101 = try values.decodeIfPresent(String.self, forKey: .seats101)
        seats9ge1 = try values.decodeIfPresent(String.self, forKey: .seats9ge1)
        seats9swd1 = try values.decodeIfPresent(String.self, forKey: .seats9swd1)
        stateCode = try values.decodeIfPresent(String.self, forKey: .stateCode)
        subway = try values.decodeIfPresent(String.self, forKey: .subway)
        totalStudents = try values.decodeIfPresent(String.self, forKey: .totalStudents)
        website = try values.decodeIfPresent(String.self, forKey: .website)
        zip = try values.decodeIfPresent(String.self, forKey: .zip)
    }
}
