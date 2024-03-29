//
//  ContentView.swift
//  test
//
//  Created by John Jackson on 12/13/23.
//
import AVKit
import SwiftUI

struct CategoryExpense: View {
    var body: some View {
        VStack {
            ExpenseCategoryDetails(viewModel: ExpenseCategoryViewModel(
                link: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVLphjVbjnsYYTupA7zsbJ7ZhmpA5UNHAN7g&usqp=CAU",
                title: "Fly To Paris",
                date: "Dec 14, 2023",
                expense: 214.20
            ))
            ExpenseCategoryDetails(viewModel:ExpenseCategoryViewModel(
                link: "https://static.greatbigcanvas.com/images/singlecanvas_thick_none/getty-images/bag-of-fresh-groceries,1962974.jpg",
                title: "Groceries",
                date: "Dec 14, 2023",
                expense: -123.23
            ))
        }

    }
}
