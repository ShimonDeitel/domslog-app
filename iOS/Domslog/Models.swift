import Foundation

struct DomsEntry: Identifiable, Codable, Equatable {
    let id: UUID
    var date: Date
    var bodyPart: String
    var soreness: Int
    var notes: String

    init(id: UUID = UUID(), date: Date = Date(), bodyPart: String = "", soreness: Int = 0, notes: String = "") {
        self.id = id
        self.date = date
        self.bodyPart = bodyPart
        self.soreness = soreness
        self.notes = notes
    }
}

struct AppSettings: Codable, Equatable {
    var remindersEnabled: Bool = true
    var metricUnits: Bool = false
    var includeInStreak: Bool = true
}
