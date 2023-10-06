//
//  VerTempoView.swift
//  nano4
//
//  Created by Natalia Schueda on 05/10/23.
//

import SwiftUI

struct VerTempoWork: View {
    
    @StateObject var workModel = WorkModel()
    
    var verTempoWork: Bool
    
    var body: some View {
        
        if verTempoWork == true {
            Text("\(workModel.time)")
                .font(.system(size: 70, weight: .medium, design: .rounded))
                .foregroundStyle(.white)
                .alert("Timer done!", isPresented: $workModel.showingAlert) {
                    Button("Continue", role: .cancel) {
                        // Code
                    }
                }
                .padding()
                .frame(width: .infinity)
            //                .background(.thinMaterial)
            //                .cornerRadius(20)
            //                .overlay(
            //                        RoundedRectangle(cornerRadius: 20)
            //                            .stroke(Color.gray, lineWidth: 4)
            //                    )
        } else {
            Text("trabalha")
        }
        
    }
}

#Preview {
    VStack {
        VerTempoWork(verTempoWork: true)
        VerTempoWork(verTempoWork: false)
    }
}