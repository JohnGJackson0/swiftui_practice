import XCTest
@testable import ExpenseTracker

final class CurrencyUtils: XCTestCase {
    func testFormatToUSCurrency() {
        let positiveAmount = CurrencyFormatter.formatToUSCurrency(for: 1234.56)
        XCTAssertEqual(positiveAmount, "$1,234.56", "The formatted string for positive amount is positive with no plus sign")
        let negativeAmount = CurrencyFormatter.formatToUSCurrency(for: -1234.56)
        XCTAssertEqual(negativeAmount, "-$1,234.56", "The formatted string for negative amount is negative")
        let zeroAmount = CurrencyFormatter.formatToUSCurrency(for: 0)
        XCTAssertEqual(zeroAmount, "$0.00", "Formatted string for 0 should be $0.00")
        let extraDecimal = CurrencyFormatter.formatToUSCurrency(for: 123.3293)
        XCTAssertEqual(extraDecimal, "$123.33", "Formatted string should round to two decimal places.")
    }
}
