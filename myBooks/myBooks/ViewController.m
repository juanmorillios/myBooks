//
//  ViewController.m
//  myBooks
//
//  Created by Juan Morillo on 26/7/15.
//  Copyright (c) 2015 JuanMorillios. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    _books = [[NSMutableArray alloc]init];
    LibrosImprescindibles *libros = [[LibrosImprescindibles alloc]init];
    libros.nombre =@"Objetive C";
    libros.autor = @"C. Frederick";
    libros.fecha_publiacion = @"2015";
    libros.genero = @"Programación";
    
    [_books addObject:libros];
    
    
    _books = [[NSMutableArray alloc]init];
    libros.nombre =@"Html 5 y Cs3";
    libros.autor = @"Juanma";
    libros.fecha_publiacion = @"2014";
    libros.genero = @"Programación";
    
    [_books addObject:libros];

    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    UILabel *etiqueta = (UILabel *)[cell viewWithTag:11];
    LibrosImprescindibles *libro = [_books objectAtIndex:indexPath.row];
   
    etiqueta.text = libro.nombre;
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [_books count];


}

@end
