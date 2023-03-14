//
//  AddAssingmentView.swift
//  AssingmentNotebook2
//
//  Created by James on 3/11/23.
//

import SwiftUI

struct AddAssignmentView: View {
    @ObservedObject var assignmentList: AssignmentList
    
    
    
    
    
    
    struct AddAssignmentView_Previews: PreviewProvider {
        static var previews: some View {
            AddAssignmentView(assignmentList: AssignmentList())
        }
    }
}
