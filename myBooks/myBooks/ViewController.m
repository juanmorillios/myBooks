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
    libros.titulo = @"Libro Informáticca";
    libros.saga = @"Educación";
    libros.tituloOriginal = @"Java";
    libros.autor = @"Juanma";
    libros.ano_publiacion =@"2015";
    libros.genero = @"Programación";
    libros.sipnosis =@"Manual para principiantes en Java";
      [_books addObject:libros];

    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{


    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    LibrosImprescindibles *libro = [_books objectAtIndex:indexPath.row];
   
    UILabel *etiqueta = (UILabel *) [cell viewWithTag:11];
    
    etiqueta.text = libro.titulo;

    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 5;


}

@end
