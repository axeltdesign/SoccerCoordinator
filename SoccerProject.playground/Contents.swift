// Players Data store

var player1: [String:String] = ["Player Name":"Joe Smith", "Player Height": "42", "Soccer Experience": "yes", "Guardians":"Jim and Jan Smith", "Date and Time":"March 17 at 1pm"]

var player2: [String:String] = ["Player Name":"Jill Tanner", "Player Height": "36", "Soccer Experience": "yes", "Guardians":"Clara Tanner", "Date and Time":"March 17 at 1pm" ]

var player3: [String:String] = ["Player Name":"Bill Bon", "Player Height": "43", "Soccer Experience": "yes", "Guardians":"Sara and Jenny Bon", "Date and Time":"March 17 at 1pm"]

var player4: [String:String] = ["Player Name":"Eva Gordon", "Player Height": "45", "Soccer Experience": "no", "Guardians":"Wendy and Mike Gordon", "Date and Time":"March 17 at 1pm"]

var player5: [String:String] = ["Player Name":"Matt Gill", "Player Height": "40", "Soccer Experience": "no", "Guardians":"Charles and Sylvia Gill", "Date and Time":"March 17 at 1pm"]

var player6: [String:String] = ["Player Name":"Kimmy Stein", "Player Height": "41", "Soccer Experience": "no", "Guardians":"Bill and Hillary Stein", "Date and Time":"March 17 at 1pm"]

var player7: [String:String] = ["Player Name":"Sammy Adams", "Player Height": "45", "Soccer Experience": "no", "Guardians":"Jeff Adams", "Date and Time":"March 17 at 1pm"]

var player8: [String:String] = ["Player Name":"Karl Saygan", "Player Height": "42", "Soccer Experience": "yes", "Guardians":"Heather Bledsoe", "Date and Time":"March 17 at 1pm"]

var player9: [String:String] = ["Player Name":"Suzane Greenberg", "Player Height": "44", "Soccer Experience": "yes", "Guardians":"Henrietta Dumas", "Date and Time":"March 17 at 1pm"]

var player10: [String:String] = ["Player Name":"Sal Dali", "Player Height": "41", "Soccer Experience": "no", "Guardians":"Gala Dali", "Date and Time":"March 17 at 1pm"]

var player11: [String:String] = ["Player Name":"Joe Kavalier", "Player Height": "39", "Soccer Experience": "no", "Guardians":"Sam and Elaine Kavalier", "Date and Time":"March 17 at 1pm"]

var player12: [String:String] = ["Player Name":"Ben Finkelstein", "Player Height": "44", "Soccer Experience": "no", "Guardians":"Aaron and Jill Finkelstein", "Date and Time":"March 17 at 1pm"]

var player13: [String:String] = ["Player Name":"Diego Soto", "Player Height": "41", "Soccer Experience": "yes", "Guardians":"Robin and Sarika Soto", "Date and Time":"March 17 at 1pm"]

var player14: [String:String] = ["Player Name":"Chloe Alaska", "Player Height": "47", "Soccer Experience": "no", "Guardians":"David and Jamie Alaska", "Date and Time":"March 17 at 1pm"]

var player15: [String:String] = ["Player Name":"Arnold Willis", "Player Height": "43", "Soccer Experience": "no", "Guardians":"Claire Willis", "Date and Time":"March 17 at 1pm"]

var player16: [String:String] = ["Player Name":"Phillip Helm", "Player Height": "44", "Soccer Experience": "yes", "Guardians":"Thomas Helm and Eva Jones", "Date and Time":"March 17 at 1pm"]

var player17: [String:String] = ["Player Name":"Les Clay", "Player Height": "42", "Soccer Experience": "yes", "Guardians":"Wynonna Brown", "Date and Time":"March 17 at 1pm"]

var player18: [String:String] = ["Player Name":"Herschel Krustofski", "Player Height": "45", "Soccer Experience": "yes", "Guardians":"Hyman and Rachel Krustofski", "Date and Time":"March 17 at 1pm"]

// All Players Data

var players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12,player13, player14, player15, player16, player17, player18]

//Teams related to experience

var teamSharks: [[String: String]] = []
var teamDragons: [[String: String]] = []
var teamRaptors: [[String: String]] = []

func teams() {
    
    var ExperienceYes: Int = 1
    var ExperienceNo: Int = 1
    
    for player in players {
        if player["Soccer Experience"] == "yes" {
            switch(ExperienceYes % 6) {
            case 1: teamDragons.append(player)
            case 2: teamSharks.append(player)
            case 3: teamRaptors.append(player)
            case 4: teamRaptors.append(player)
            case 5: teamSharks.append(player)
            case 0: teamDragons.append(player)
            default: break
            }
            ExperienceYes += 1
        } else {
            switch(ExperienceNo % 6) {
            case 1: teamDragons.append(player)
            case 2: teamSharks.append(player)
            case 3: teamRaptors.append(player)
            case 4: teamRaptors.append(player)
            case 5: teamSharks.append(player)
            case 0: teamDragons.append(player)
            default: break
            }
            ExperienceNo += 1
        }
    }
    
}


// letters

func letters() {
    // Dragons letter
    for kid in teamDragons {
        print("Dear \(kid["Guardians"]!), \nYour child, \(kid["Player Name"]!), is on team Dragons, and their first practice is on March 17th at 1:00 PM.")
    }
    // Sharks letter
    for kid in teamSharks {
        print("Dear \(kid["Guardians"]!), \nYour child, \(kid["Player Name"]!), is on team Sharks, and their first practice is on March 17th at 3:00 PM.")
    }
    // Raptors letter
    for kid in teamRaptors {
        print("Dear \(kid["Guardians"]!), \nYour child, \(kid["Player Name"]!), is on team Raptors, and their first practice is on March 18th at 1:00 PM.")
    }
}

teams()
letters()
