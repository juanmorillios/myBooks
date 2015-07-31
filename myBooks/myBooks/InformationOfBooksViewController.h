//
//  InformationOfBooksViewController.h
//  myBooks
//
//  Created by Juan Morillo on 30/7/15.
//  Copyright (c) 2015 JuanMorillios. All rights reserved.
//

#import "ViewController.h"

@interface InformationOfBooksViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UILabel *lblNameLibro;


@property (weak, nonatomic) IBOutlet UILabel *lblAutorBook;


@property (weak, nonatomic) IBOutlet UILabel *lblFechaBook;

@property (weak, nonatomic) IBOutlet UILabel *lblGeneroBook;

@property (weak, nonatomic) IBOutlet UITextView *txtViewArgumento;
@property LibrosImprescindibles *libroSeleccionado;



- (IBAction)compartirBtn:(id)sender;


- (IBAction)atrasBtn:(id)sender;


@end
