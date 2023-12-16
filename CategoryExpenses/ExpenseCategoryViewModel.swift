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
        let formattedAmount = CurrencyFormatter.formatToUSCurrency(for: expense)
        let prefix = expense > 0 ? "+" : ""
        return prefix + formattedAmount
    }
}
