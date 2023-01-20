//
//  ContentView.swift
//  Dice_Demo
//
//  Created by Renato Oliveira Fraga on 11/23/22.
//

import SwiftUI

struct BoardView: View {
    @State var dice1 = Dice(id: UUID(), value: 0, isSelected: false, bottomFaceSelected: false)
    @State var dice2 = Dice(id: UUID(), value: 0, isSelected: false, bottomFaceSelected: false)
    @State var dice3 = Dice(id: UUID(), value: 0, isSelected: false, bottomFaceSelected: false)
    @State var dice4 = Dice(id: UUID(), value: 0, isSelected: false, bottomFaceSelected: false)
    @State var dice5 = Dice(id: UUID(), value: 0, isSelected: false, bottomFaceSelected: false)
    
    @State var selectedDices = ["d1": 0, "d2": 0, "d3": 0, "d4": 0, "d5": 0]
    @State var rodada = 0
    
    var body: some View {
        ZStack {
            Color("Table")
                .ignoresSafeArea(.all)
            VStack {
                Text("Jogo de Bozó")
                    .font(.largeTitle.bold())
                //Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: 350)
                        
                    Grid(horizontalSpacing: 70, verticalSpacing: 20) {
                        GridRow {
                            Button(action: {
                                if dice1.value == 0 {
                                    dice1.isSelected = false
                                } else {
                                    dice1.isSelected.toggle()
                                    if dice1.isSelected {
                                        selectedDices["d1"] = dice1.value
                                    } else {
                                        selectedDices["d1"] = 0
                                        dice1.value = 0
                                    }
                                }
                                
                                
                            }, label: {
                                Image(dice1.isSelected ? "d\(dice1.value)s" : "d\(dice1.value)")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                            })
                            Button(action: {
                                if dice2.value == 0 {
                                    dice2.isSelected = false
                                } else {
                                    dice2.isSelected.toggle()
                                    if dice2.isSelected {
                                        selectedDices["d2"] = dice2.value
                                    }  else {
                                        selectedDices["d2"] = 0
                                        dice2.value = 0
                                    }
                                }
                                
                            }, label: {
                                Image(dice2.isSelected ? "d\(dice2.value)s" : "d\(dice2.value)")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                            })
                        }
                        GridRow {
                            Button(action: {
                                if dice3.value == 0 {
                                    dice3.isSelected = false
                                } else {
                                    dice3.isSelected.toggle()
                                    if dice3.isSelected {
                                        selectedDices["d3"] = dice3.value
                                    } else {
                                        selectedDices["d3"] = 0
                                        dice3.value = 0
                                    }
                                }
                                
                            }, label: {
                                Image(dice3.isSelected ? "d\(dice3.value)s" : "d\(dice3.value)")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                            }).gridCellColumns(2)
                        }
                        GridRow {
                            Button(action: {
                                if dice4.value == 0 {
                                    dice4.isSelected = false
                                } else {
                                    dice4.isSelected.toggle()
                                    if dice4.isSelected {
                                        selectedDices["d4"] = dice4.value
                                    } else {
                                        selectedDices["d4"] = 0
                                        dice4.value = 0
                                    }
                                }
                                
                            }, label: {
                                Image(dice4.isSelected ? "d\(dice4.value)s" : "d\(dice4.value)")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                            })
                            Button(action: {
                                if dice5.value == 0 {
                                    dice5.isSelected = false
                                } else {
                                    dice5.isSelected.toggle()
                                    if dice5.isSelected {
                                        selectedDices["d5"] = dice5.value
                                    } else {
                                        selectedDices["d5"] = 0
                                        dice5.value = 0
                                    }
                                }
                                
                            }, label: {
                                Image(dice5.isSelected ? "d\(dice5.value)s" : "d\(dice5.value)")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                            })
                        }
                    }
                }
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: 100 )
                    Grid(horizontalSpacing: 15){
                        GridRow {
                            Image("d\(selectedDices["d1", default: 0])")
                                .resizable()
                                .frame(width: 50,height: 50)
                            Image("d\(selectedDices["d2", default: 0])")
                                .resizable()
                                .frame(width: 50,height: 50)
                            Image("d\(selectedDices["d3", default: 0])")
                                .resizable()
                                .frame(width: 50,height: 50)
                            Image("d\(selectedDices["d4", default: 0])")
                                .resizable()
                                .frame(width: 50,height: 50)
                            Image("d\(selectedDices["d5", default: 0])")
                                .resizable()
                                .frame(width: 50,height: 50)
                        }
                        
                    }.padding(.vertical)
                }
                    
                Spacer()
                Button(action: {
                    rollDices()
                }, label: {
                    Text("Jogar os dados")
                }).buttonStyle(.borderedProminent)
                Spacer()
                Text("Lançamento \(rodada)/3")
            }
              
                    
            
            .padding()
        }
    }
    
    func rollDices() {
        rodada += 1
        if rodada < 4 {
            if !dice1.isSelected {
                dice1.value = Int.random(in: 1...6)
            }
            if !dice2.isSelected {
                dice2.value = Int.random(in: 1...6)
            }
            if !dice3.isSelected {
                dice3.value = Int.random(in: 1...6)
            }
            if !dice4.isSelected {
                dice4.value = Int.random(in: 1...6)
            }
            if !dice5.isSelected {
                dice5.value = Int.random(in: 1...6)
            }
        } else {
            rodada = 0
            selectedDices = ["d1": 0, "d2": 0, "d3": 0, "d4": 0, "d5": 0]
            dice1.value = 0
            dice1.isSelected = false
            dice2.value = 0
            dice2.isSelected = false
            dice3.value = 0
            dice3.isSelected = false
            dice4.value = 0
            dice4.isSelected = false
            dice5.value = 0
            dice5.isSelected = false
            
        }
        
            
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
    }
}
