import Foundation

struct CurrencyFormatter {
    static func formatToUSCurrency(for amount: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "en_US")
        formatter.currencySymbol = "$"
        return (formatter.string(from: NSNumber(value: amount)) ?? "")
    }
}
