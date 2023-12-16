import Foundation

class ExpenseCategoryViewModel: ObservableObject {
    let link: String
    let title: String
    let date: String
    let expense: Double

    init(link: String, title: String, date: String, expense: Double) {
        self.link = link
        self.title = title
        self.date = date
        self.expense = expense
    }

    func formattedCurrencyString() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "en_US")
        formatter.currencySymbol = "$"
        let prefix = expense > 0 ? "+" : ""
        return prefix + (formatter.string(from: NSNumber(value: expense)) ?? "")
    }
}
