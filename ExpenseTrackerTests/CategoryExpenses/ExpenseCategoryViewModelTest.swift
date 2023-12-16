import XCTest
@testable import ExpenseTracker

class ExpenseCategoryViewModelTests: XCTestCase {
    
    func testViewModelInitialization() {
        let viewModel = ExpenseCategoryViewModel(link: "testLink", title: "testTitle", date: "testDate", expense: 100.0)
        XCTAssertEqual(viewModel.link, "testLink", "Link should be initialized correctly")
        XCTAssertEqual(viewModel.title, "testTitle", "Title should be initialized correctly")
        XCTAssertEqual(viewModel.date, "testDate", "Date should be initialized correctly")
        XCTAssertEqual(viewModel.expense, 100.0, "Expense should be initialized correctly")
    }
    
    func testFormattedCurrencyString_PositiveExpense() {
        let viewModel = ExpenseCategoryViewModel(link: "", title: "", date: "", expense: 123.45)
        let formattedString = viewModel.formattedCurrencyString()
        XCTAssertEqual(formattedString, "+$123.45", "The formatted string for a positive expense is incorrect")
    }

    func testFormattedCurrencyString_NegativeExpense() {
        let viewModel = ExpenseCategoryViewModel(link: "", title: "", date: "", expense: -123.45)
        let formattedString = viewModel.formattedCurrencyString()
        XCTAssertEqual(formattedString, "-$123.45", "The formatted string for a negative expense is incorrect")
    }

    func testFormattedCurrencyString_ZeroExpense() {
        let viewModel = ExpenseCategoryViewModel(link: "", title: "", date: "", expense: 0)
        let formattedString = viewModel.formattedCurrencyString()
        XCTAssertEqual(formattedString, "$0.00", "The formatted string for a zero expense is incorrect")
    }
}
