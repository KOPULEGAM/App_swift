
//  ContentView.swift
//  CSC196P
//
//  Created by Jenil  Shingala on 9/21/24.
//
import SwiftUI

struct ContentView: View
{
    // State variables to hold user inputs and the result
    @State private var number1: String = ""
    @State private var number2: String = ""
    @State private var result: Int = 0
    
    var body: some View
    {
       Text("CSC_196P")
        VStack
        {
            // Load the image from the URL
            AsyncImage(url: URL(string: "https://logos-world.net/wp-content/uploads/2020/07/Sacramento-State-Hornets-Logo.png"))
            { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200) // Set the size of the image
            }
        placeholder:
            {
                ProgressView() // Placeholder while loading
            }
            
            Text("California State University, Sacramento\n\t\t\t\t\t\t\t\t----Jenil")
            
            // TextField for the first number
            TextField("Enter first number", text: $number1)
                .padding()
                .keyboardType(.numberPad) // Ensure that only numbers are entered
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // TextField for the second number
            TextField("Enter second number", text: $number2)
                .padding()
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // Button to perform the addition
            Button(action:
                    {
                // Perform addition if both inputs are valid integers
                if let num1 = Int(number1), let num2 = Int(number2)
                {
                    result = num1 + num2
                }
            })
            {
                Text("Add Numbers")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            // Display the result
            Text("Result: \(result)")
                .padding()
                .font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
