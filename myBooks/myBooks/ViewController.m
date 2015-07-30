//
//  ViewController.m
//  myBooks
//
//  Created by Juan Morillo on 26/7/15.
//  Copyright (c) 2015 JuanMorillios. All rights reserved.
//

#import "ViewController.h"
#import "InformationOfBooksViewController.h"



@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _libros = [[NSMutableArray alloc]init];
    LibrosImprescindibles *libros = [[LibrosImprescindibles alloc]init];
    libros.nombre =@"Objetive C";
    libros.autor = @"C. Frederick";
    libros.fecha_publiacion = @"2015";
    libros.genero = @"Programación";
    [_libros addObject:libros];
    
    
    _libros = [[NSMutableArray alloc]init];
    libros.nombre =@"Html 5 y Cs3";
    libros.autor = @"Juanma";
    libros.fecha_publiacion = @"2014";
    libros.genero = @"Programación";
    [_libros addObject:libros];

    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *celda = [tableView dequeueReusableCellWithIdentifier:@"Celda"];
    LibrosImprescindibles *libro = [_libros objectAtIndex:indexPath.row];
    UILabel *etiqueta = (UILabel *)[celda viewWithTag:11];
    etiqueta.text = libro.nombre;
    
    return celda;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [_libros count];
    
    
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    InformationOfBooksViewController *informationOfBooksViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"InformationOfBooksViewController"];
    UINavigationController *navigationController = [[UINavigationController alloc]initWithRootViewController:informationOfBooksViewController];
    [self presentViewController:navigationController animated:YES completion:nil];
    
}










@end
