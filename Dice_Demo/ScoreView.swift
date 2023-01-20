//
//  ScoreView.swift
//  Dice_Demo
//
//  Created by Renato Oliveira Fraga on 12/23/22.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        ZStack {
            Color("Table")
                .ignoresSafeArea(.all)
            VStack {
                Text("Pontos")
                    .font(.largeTitle.bold())
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: 100 )
                    Grid(horizontalSpacing: 15) {
                        GridRow {
                            Image("d0")
                                .resizable()
                                .frame(width: 50,height: 50)
                            Image("d0")
                                .resizable()
                                .frame(width: 50,height: 50)
                            Image("d0")
                                .resizable()
                                .frame(width: 50,height: 50)
                            Image("d0")
                                .resizable()
                                .frame(width: 50,height: 50)
                            Image("d0")
                                .resizable()
                                .frame(width: 50,height: 50)
                        }
                        
                    }.padding(.vertical)
                }
          
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: 430)
                    Grid(horizontalSpacing: 15, verticalSpacing: 15) {
                        GridRow {
                            Text("1s")
                                .font(.largeTitle.bold())
                                .frame(width: 80, height: 80)
                                .background(Color.white)
                                .cornerRadius(10)
                            Text("Seq")
                                .font(.largeTitle.bold())
                                .frame(width: 80, height: 80)
                                .background(Color.white)
                                .cornerRadius(10)
                            Text("4s")
                                .font(.largeTitle.bold())
                                .frame(width: 80, height: 80)
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                        GridRow {
                            Text("2s")
                                .font(.largeTitle.bold())
                                .frame(width: 80, height: 80)
                                .background(Color.white)
                                .cornerRadius(10)
                            Text("Fula")
                                .font(.largeTitle.bold())
                                .frame(width: 80, height: 80)
                                .background(Color.white)
                                .cornerRadius(10)
                            Text("5s")
                                .font(.largeTitle.bold())
                                .frame(width: 80, height: 80)
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                        GridRow {
                            Text("3s")
                                .font(.largeTitle.bold())
                                .frame(width: 80, height: 80)
                                .background(Color.white)
                                .cornerRadius(10)
                            Text("Quad")
                                .font(.largeTitle.bold())
                                .frame(width: 80, height: 80)
                                .background(Color.white)
                                .cornerRadius(10)
                            Text("6s")
                                .font(.largeTitle.bold())
                                .frame(width: 80, height: 80)
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                        GridRow {
                            Text("Gen")
                                .font(.largeTitle.bold())
                                .frame(width: 80, height: 80)
                                .background(Color.white)
                                .cornerRadius(10)
                                .gridCellColumns(3)
                        }
                    }
                    
                }
                Spacer()
            }.padding(.horizontal)
            
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
