//
//  SelectView.swift
//  MultiplicationTables-SwiftUI
//
//  Created by Mike Jarosch on 10/30/20.
//

import SwiftUI

struct SelectView: View {
    let complete: ([Question]) -> Void

    @State private var factors = Array(repeating: true, count: 12)
    @State private var numberOfQuestions: Int = 5
        
    private let numberOptions = [5, 10, 20, 144]

    var body: some View {
        VStack {
            Spacer()
            Text("What factors would you like to practice?")
                .font(.title2)
                .multilineTextAlignment(.center)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 8) {
                ForEach(0..<12) { index in
                    Toggle("\(index + 1)", isOn: $factors[index])
                        .toggleStyle(ImageToggleStyle(image: "red-button"))
                }
            }
            
            Spacer()
            
            Text("How many questions would you like to answer?")
                .font(.title2)
                .multilineTextAlignment(.center)

            Picker("Number of Questions", selection: $numberOfQuestions) {
                ForEach(numberOptions, id: \.self) { option in
                    Text(option == 144 ? "All (\(selectedQuestions.count))" : "\(option)")
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Spacer()

            Button("Start") {
                let questions = selectedQuestions.shuffled()

                let trimmedQuestions = Array(questions.prefix(numberOfQuestions))

                complete(Array(trimmedQuestions))
            }
            .buttonStyle(ImageButtonStyle(image: "red-button"))
            .disabled(selectedQuestions.count == 0)
        }.padding()
    }
    
    private var selectedQuestions: [Question] {
        Question.allQuestions
            .filter { factors[$0.factor1 - 1] || factors[$0.factor2 - 1] }
    }
}

struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView() { (questions) in
            
        }
    }
}
