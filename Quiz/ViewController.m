//
//  ViewController.m
//  Quiz
//
//  Created by Vivian Chiodo Dias on 23/02/15.
//  Copyright (c) 2015 Vivian Chiodo Dias. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize pergunta, resposta, perguntas, respostas, imagem, imagens;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view setBackgroundColor:[UIColor grayColor]];
    
    pergunta.textColor = [UIColor whiteColor];
    perguntas = @[@"Quanto é 7 + 7?", @"Que animal tem bico de pato e cauda de castor?", @"O ceu é azul?"];
    respostas = @[@"14", @"Ornitorrinco", @"Sim"];
    imagens = @[@"14.png", @"Perry.png", @"ceu.png"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)proxima:(id)sender {
    if ([[pergunta text]isEqualToString:[perguntas objectAtIndex:0]]) {
        [pergunta setText:perguntas[1]];
        [resposta setText:@"????"];
        imagem.image = nil;
    }
    else if([[pergunta text]isEqualToString:[perguntas objectAtIndex:1]]){
        [pergunta setText:perguntas[2]];
        [resposta setText:@"????"];
        imagem.image = nil;
    }
    else{
        [pergunta setText:perguntas[0]];
        [resposta setText:@"????"];
        imagem.image = nil;
    }
}
- (IBAction)mostrar:(id)sender {
    if ([[pergunta text]isEqualToString:[perguntas objectAtIndex:0]]) {
        [resposta setText:respostas[0]];
        imagem.image = [UIImage imageNamed:imagens[0]];
    }
    else if([[pergunta text]isEqualToString:[perguntas objectAtIndex:1]]){
        [resposta setText:respostas[1]];
        imagem.image = [UIImage imageNamed:imagens[1]];
    }
    else{
        [resposta setText:respostas[2]];
        imagem.image = [UIImage imageNamed:imagens[2]];
    }

}
@end
