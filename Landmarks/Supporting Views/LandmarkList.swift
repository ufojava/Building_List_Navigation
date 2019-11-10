//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ufuoma Okoro on 10/11/2019.
//  Copyright © 2019 Apple. All rights reserved.
//

//Landmark List
import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        //Going to display list from Landmark
       
          /*
        List {
          
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
            LandmarkRow(landmark: landmarkData[2])
            LandmarkRow(landmark: landmarkData[4])
            LandmarkRow(landmark: landmarkData[5])
            LandmarkRow(landmark: landmarkData[6])
           

            }
         */
        
        
        //Replacement code
        //Add Navigation View
        NavigationView {
            
            List(landmarkData) { landmark in
                
                //Insert the Navigation link
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                   LandmarkRow(landmark: landmark)
                }
                    
            }
            
            .navigationBarTitle(Text("Landmarks"))
        }
        
     
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
