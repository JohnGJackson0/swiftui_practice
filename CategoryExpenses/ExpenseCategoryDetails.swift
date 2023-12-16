import SwiftUI

struct ExpenseCategoryDetails: View {
    @ObservedObject var viewModel: ExpenseCategoryViewModel
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: viewModel.link))
            { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            .background(Color.green)
            .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(viewModel.title)
                    .padding(.bottom, 2)
                Text(viewModel.date)
                    .font(.system(size: 12))
                    .foregroundColor(Color.gray)
            }
            Spacer()
            Text(viewModel.formattedCurrencyString())
                .foregroundColor(viewModel.expense > 0 ? .green : .red)
        }
        .padding()
    }

}
