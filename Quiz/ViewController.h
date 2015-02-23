//
//  ViewController.h
//  Quiz
//
//  Created by Vivian Chiodo Dias on 23/02/15.
//  Copyright (c) 2015 Vivian Chiodo Dias. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSArray *perguntas;
    NSArray *respostas;
    NSArray *imagens;
}

@property NSArray *perguntas;
@property NSArray *respostas;
@property NSArray *imagens;

@property (weak, nonatomic) IBOutlet UILabel *pergunta;
- (IBAction)proxima:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *resposta;
- (IBAction)mostrar:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *imagem;


@end

