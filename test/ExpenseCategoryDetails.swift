import SwiftUI

struct ExpenseCategoryDetails: View {
    var link: String;
    var title: String;
    var date: String;
    var expense: String;
    
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
            Text(expense)
                .foregroundColor(Color.red)
        }
        .padding()
    }

}
