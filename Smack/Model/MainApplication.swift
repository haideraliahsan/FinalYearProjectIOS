//
//  MainApplication.swift
//  Smack
//
//  Created by haider ali on 06/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import Foundation
class MainApplication {
    var AllApplications: String?
    var Followers: Followers?
    var JobPost: JobPost?
    var JobSeekerAwards: JobSeekerAwards?
    var JobSeekerHobbies: JobSeekerHobbies?
    var JobSeekerIndustries: JobSeekerIndustries?
    var JobSeekerInterests: JobSeekerInterests?
    var JobSeekerSkills: JobSeekerSkills?
    var JobSeekerStrengths: JobSeekerStrengths?
    var JobSeekerexperiences: JobSeekerexperiences?
    var JobSeekerEducation: JobSeekersEducation?
    var JobSeekerProjects: JobSeekerProjects?
    var Jobs: Jobs?
    var MyResume: MyResume?
    var Posts: Posts?
    var RecruiterFollowers: RecruiterFollowers?
    var RecruiterUser: RecruiterUser?
    var ReferenceDetails_Resume: ReferenceDetails_Resume?
    var addressDetails: addressDetails?
    var awards_Resume: awards_Resume?
    var company: company?
    var contactdetails_Resume: contactdetails_Resume?
    var coverletter: coverletter?
    var education: education?
    var education_Resume: education_Resume?
    var experience: experience?
    var experience_Resume: experience_Resume?
    var hobbies_Resume: hobbies_Resume?
    var industries_Resume: industries_Resume?
    var interests_Resume: interests_Resume?
    var jobApplication: jobApplication?
    var jobalerts: jobalerts?
    var jobpreference: jobpreference?
    var languages: languages?
    var objective_Resume: objective_Resumeaddclose?
    var personalinfo_Resume: personalinfo_Resume?
    var skills: skills?
    var skills_Resume: skills_Resume?
    var strengths_Resume: strengths_Resume?
    var uploadFoto: uploadFoto?
    var users: users?
    
}
class users {
    
    var dob: String?
    var email: String?
    var firstname: String?
    var lastname: String?
    var nationality: String?
    var phone: String?
    var profile_image: String?
    var security_level: String?
    var user_id: String?
}


class uploadFoto {
    
    var profile_image: String?
}


class strengths_Resume{
    
    var cv_id: String?
    var strength_name: String?
}

class skills_Resume {
    var cv_id: String?
    var skillName: String?

}


class skills {
    
    var skillLevel: String?
    var skillname: String?
    var user_id: String?
}


class projects_Resume {
    var cv_id: String?
    var description: String?
    var duration: String?
    var role: String?
    var teamsize: String?
    var title: String?
}





class personalinfo_Resume {
    
    
    var custom: String?
    var dob: String?
    var maritalstatus: String?
    var nationality: String?
    var persnlInfo_id: String?

}
class languages {
    
    var language: String?
    var languagelevel: String?
    var user_id: String?

}



class jobpreference {
    
    var careerlevel: String?
    var city: String?
    var country: String?
    var designation: String?
    var employmenttype: String?
    var industry: String?
    var jobrole: String?
    var salary: String?
    var user_id: String?
}


class jobalerts {
    
    var alertname: String?
    var city: String?
    var country: String?
    var jobrole: String?
    var keywords: String?
    var user_id: String?
}


class jobApplication
{
 
    var applicationDate: String?
    var application_id: String?
    var applicationstatus: String?
    var city: String?
    var companyName: String?
    var country: String?
    var cv_id: String?
    var dob: String?
    var email: String?
    var firstname: String?
    var jcity: String?
    var jcountry: String?
    var job_id: String?
    var lastname: String?
    var nationality: String?
    var phone: String?
    var profile_image: String?
    var recruiter_id: String?
    var security_level: String?
    var state: String?
    var status: String?
    var useridd: String?
    var yourName: String?
    var zipcode: String?

}

class interests_Resume
{
    
    var cv_id: String?
    var strength_name: String?
}
class industries_Resume {
    
    var cv_id: String?
    var industry_name: String?
}
class hobbies_Resume {
    
    var cv_id: String?
    var hobby_name: String?
}


class experience_Resume {

    var cv_id: String?
var designation: String?
var emploaymentStatus: String?
var fromExp: String?
var organization: String?
var role: String?
var toExp: String?
}


class experience {

var designation: String?
var empStatus: String?
var expFrom: String?
var expTo: String?
var organization: String?
var role: String?
var user_id: String?
}

class education_Resume {
var cv_id: String?
var grade: String?
var instituition: String?
var name: String?
var passingYear: String?
var statuscompletion: String?
    
}

class education {
    
    var course: String?
    var grade: String?
    var institute: String?
    var passyear: String?
    var status: String?
    
}



class coverletter {

var address: String?
var body: String?
var companyname: String?
var date: String?
var recruitername: String?
var user_id: String?
}
class contactdetails_Resume {
    var address: String?
    var contact_id: String?
    var email: String?
    var name: String?
    var phone: String?
}
class company {
    var ceoName: String?
    var city: String?
    var companyDescription: String?
    var companyName: String?
    var country: String?
    var headHRdepartment:  String?
    var industryName: String?
    var jobRole: String?
    var ownershipType: String?
}
class awards_Resume {
    
   var award_name: String?
    var cv_id: String?
}

class objective_Resumeaddclose{

    var objDate: String?
    var objPlace: String?
    var obj_id: String?
    var objective: String?
}

class addressDetails {
    var city: String?
    var country:  String?
    var state: String?
    var zipcode: String?
}

class ReferenceDetails_Resume {
    var refEmail: String?
    var refMobile: String?
    var refOrg: String?
    var refdesignation: String?
    var reference_id: String?
    var refname: String?
}

class RecruiterUser {
    
    var email: String?
    var firstname: String?
    var lastname: String?
    var phone: String?
    var profile_image: String?
    var user_id: String?
    
    
    init(email: String, firstname: String, lastname: String, phone: String, profile_image: String, user_id: String){
        
        
        self.email = email
        self.firstname = firstname
        self.lastname = lastname
        self.phone = phone
        self.profile_image = profile_image
        self.user_id = user_id
        
    }
    
}


class RecruiterFollowers{
    var city: String?
    var country: String?
    var dob: String?
    var email: String?
    var firstname: String?
    var followeddate: String?
    var followid: String?
    var followingstatus: String?
    var lastname:  String?
    var nationality: String?
    var phone: String?
    var profile_image: String?
    var recruiterid: String?
    var security_level: String?
    var state: String?
    var user_id: String?
    var zipcode: String?
}


class Posts {
    
    var candidateDescription: String?
    var city: String?
    var companyName: String?
    var country: String?
    var createdOn: String?
    var creator_id: String?
    var experience: String?
    var genderPreference: String?
    var jobdescription: String?
    var jobpost_id: String?
    var jobtitle: String?
    var jobtype: String?
    var maxDegree: String?
    var minDegree: String?
    var nationality: String?
    var noOfvacancie: String?
    var phone: String?
    var salary: String?
    var skills: String?
    var status: String?
    var yourName: String?
    
    
}

class MyResume {
    var createdon: String?
    var cv_title: String?
    var dob:  String?
    var email: String?
    var firstname: String?
    var lastname: String?
    var nationality: String?
    var phone: String?
    var profile_image: String?
    var security_level: String?
    var useridd: String?
    
    
}

class Jobs {
    var job_descriptions: String?
    var job_location: String?
    var job_name: String?
    var job_url: String?
    var posted_on_date: String?

    
}


class JobSeekerProjects {
    var cv_id: String?
    var description:  String?
    var duration: String?
    var role: String?
    var teamsize: String?
    var title: String?
    
    
}

class JobSeekersEducation {
    var cv_id: String?
    var grade: String?
    var instituition:  String?
    var name: String?
    var passingYear: String?
    var statuscompletion: String?
}



class JobSeekerexperiences {
    var cv_id:String?
    var designation:String?
    var emploaymentStatus: String?
    var fromExp: String?
    var organization: String?
    var role: String?
    var toExp: String?
}



class JobSeekerStrengths {
    
    var cv_id: String?
    var strength_name: String?
    
}






class JobSeekerSkills {
    var cv_id: String?
    var skillName: String?
}

class Followers {
    var city: String?
    var country: String?
    var dob: String?
    var email: String?
    var firstname: String?
    var followeddate: String?
    var followid: String?
    var followingstatus: String?
    var lastname: String?
    var nationality: String?
    var phone: String?
    var profile_image: String?
    var recruiterid: String?
    var security_level: String?
    var state: String?
    var user_id: String?
    var zipcode: String?
}

class JobPost {
    var candidateDescription: String?
    var city: String?
    var companyName: String?
    var country: String?
    var createdOn: String?
    var creator_id:  String?
    var experience: String?
    var genderPreference: String?
    var jobdescription: String?
    var jobpost_id: String?
    var jobtitle: String?
    var jobtype: String?
    var maxDegree: String?
    var minDegree: String?
    var nationality: String?
    var noOfvacancie: Int?
    var phone: String?
    var salary: Int?
    var skills: String?
    var status: Bool?
    var yourName: String?
    
    
    init(candidateDescription: String
        , city: String
        , companyName: String
        , country: String
        , createdOn: String
        , creator_id:  String
        , experience: String
        , genderPreference: String
        , jobdescription: String
        , jobpost_id: String
        , jobtitle: String
        , jobtype: String
        , maxDegree: String
        , minDegree: String
        , nationality: String
        , noOfvacancie: Int
        , phone: String
        , salary: Int
        , skills: String
        , status: Bool
        , yourName: String) {
        self.candidateDescription = candidateDescription
        self.city = city
        self.companyName = companyName
        self.country = country
        self.createdOn = createdOn
        self.creator_id =  creator_id
        self.experience = experience
        self.genderPreference = genderPreference
        self.jobdescription = jobdescription
        self.jobpost_id = jobpost_id
        self.jobtitle = jobtitle
        self.jobtype = jobtype
        self.maxDegree = maxDegree
        self.minDegree = minDegree
        self.nationality = nationality
        self.noOfvacancie = noOfvacancie
        self.phone = phone
        self.salary = salary
        self.skills = skills
        self.status = status
        self.yourName = yourName
    }
}
class JobSeekerAwards {
    var award_name: String?
    var cv_id: String?
}
class JobSeekerHobbies {
    var cv_id: String?
    var hobby_name: String?
}
class JobSeekerIndustries {
    
    var cv_id: String?
    var industry_name: String?
    
}
class JobSeekerInterests {
    var cv_id: String?
    var strength_name: String?
}
