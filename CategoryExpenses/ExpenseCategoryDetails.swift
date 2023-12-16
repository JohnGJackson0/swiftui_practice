import SwiftUI

struct ExpenseCategoryDetails: View {
    var link: String;
    var title: String;
    var date: String;
    var expense: Double;
    
    private func formattedCurrencyString(for amount: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "en_US")
        formatter.currencySymbol = "$"
        let prefix = amount > 0 ? "+" : ""
        return prefix + (formatter.string(from: NSNumber(value: amount)) ?? "")
    }
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: link))
            { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            .background(Color.green)
            .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(title)
                    .padding(.bottom, 2)
                Text(date)
                    .font(.system(size: 12))
                    .foregroundColor(Color.gray)
            }
            Spacer()
            Text(formattedCurrencyString(for: expense))
                        .foregroundColor(expense > 0 ? .green : .red)
        }
        .padding()
    }

}
