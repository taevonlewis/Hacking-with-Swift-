//
//  ExpenseView.swift
//  iExpense
//
//  Created by TaeVon Lewis on 10/25/24.
//

import SwiftUI

struct ExpenseView: View {
    let title: String
    let expenses: [ExpenseItem]
    let deleteItems: (IndexSet) -> Void
    let localCurrency = Locale.current.currency?.identifier ?? "USD"
    
    var body: some View {
        Section(title) {
            ForEach(expenses) { item in
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                        
                        Text(item.type)
                    }
                    
                    Spacer()
                    
                    Text(item.amount, format: .currency(code: localCurrency))
                        .style(for: item)
                }
            }
            .onDelete(perform: deleteItems)
        }
    }
}

#Preview {
    let sampleExpenses = [
        ExpenseItem(name: "Coffee", type: "Personal", amount: 4.50),
        ExpenseItem(name: "Office Supplies", type: "Business", amount: 45.99),
        ExpenseItem(name: "Software Subscription", type: "Business", amount: 120.00)
    ]
    
    ExpenseView(title: "Business", expenses: sampleExpenses, deleteItems: { _ in })
}
