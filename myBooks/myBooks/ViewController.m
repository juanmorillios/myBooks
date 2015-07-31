//
//  ViewController.m
//  myBooks
//
//  Created by Juan Morillo on 26/7/15.
//  Copyright (c) 2015 JuanMorillios. All rights reserved.
//

#import "ViewController.h"
#import "InformationOfBooksViewController.h"
#import "LibrosImprescindibles.h"



@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _libros = [[NSMutableArray alloc]init];
    LibrosImprescindibles *libro = [[LibrosImprescindibles alloc]init];
    libro.nombre =@"Objetive C";
    libro.autor = @"C. Frederick";
    libro.fecha_publiacion = @"2015";
    libro.genero = @"Programación";
    [_libros addObject:libro];
    
    
    _libros = [[NSMutableArray alloc]init];
    libro.nombre =@"Html 5";
    libro.autor = @"C. Frederick";
    libro.fecha_publiacion = @"2015";
    libro.genero = @"Programación";
    [_libros addObject:libro];
    
 
    
    
    


    
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
