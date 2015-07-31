//
//  InformationOfBooksViewController.m
//  myBooks
//
//  Created by Juan Morillo on 30/7/15.
//  Copyright (c) 2015 JuanMorillios. All rights reserved.
//

#import "InformationOfBooksViewController.h"
#import "LibrosImprescindibles.h"

@interface InformationOfBooksViewController ()

@end

@implementation InformationOfBooksViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _lblNameLibro.text = _libroSeleccionado.nombre;
    _lblAutorBook.text = _libroSeleccionado.autor;
    _lblFechaBook.text = _libroSeleccionado.fecha_publiacion;
    _lblGeneroBook.text = _libroSeleccionado.genero;
    
    



}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)compartirBtn:(id)sender {
    
    NSLog(@"Aqui va código");
}

- (IBAction)atrasBtn:(id)sender {

    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
