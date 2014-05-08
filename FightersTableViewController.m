//
//  FightersTableViewController.m
//  FighterBaseTest
//
//  Created by Cory Carter on 4/22/14.
//  Copyright (c) 2014 Cory Carter and Alan Covington. All rights reserved.
//

#import "FightersTableViewController.h"
#import "Fighter.h"
#import "JSONHelper.h"
#import "DetailViewController.h"

@interface FightersTableViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tvFighters;

@end

@implementation FightersTableViewController
@synthesize tvFighters;
@synthesize listOfFighters;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    NSString* WebServiceURL = @"http://orca.st.usm.edu/~ccarte26/service.php";
    
    listOfFighters = [NSMutableArray arrayWithCapacity:50];
                       
        // Get the JSON string from our web serivce
        NSDictionary *dictionary = [JSONHelper loadJSONDataFromURL:WebServiceURL];
                       
                       
        NSData* jsonData            = [NSJSONSerialization dataWithJSONObject:dictionary options:0 error:nil];
        NSArray* deserializedArray  = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:nil];
                       
        listOfFighters = [NSMutableArray array];
                       
        for (int i = 0; i < deserializedArray.count; i++)
        {
            NSDictionary* entry = deserializedArray[i];
            Fighter* newFighter = [[Fighter alloc] init];
                           
            newFighter.Name     = [entry objectForKey:(@"Name")];
            newFighter.Origin   = [entry objectForKey:(@"Origin")];
            newFighter.Age      = [entry objectForKey:(@"Age")];
            newFighter.Height   = [entry objectForKey:(@"Height")];
            newFighter.Weight   = [entry objectForKey:(@"Weight")];
            newFighter.Game     = [entry objectForKey:(@"Game")];
            newFighter.Image    = [entry objectForKey:(@"Image")];
            [listOfFighters addObject:newFighter];
        }
            NSLog(@ "%@", listOfFighters[0]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return listOfFighters.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PrototypeFighterCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    Fighter* fight = [listOfFighters objectAtIndex:indexPath.row];
    
    cell.textLabel.text = fight.Name;
    cell.detailTextLabel.text = fight.Game;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([[segue identifier] isEqualToString:@"ShowDetails"])
    {
        
        DetailViewController *detailviewcontroller = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        int row = [myIndexPath row];
        
        Fighter* entry = [listOfFighters objectAtIndex: row];
        
        detailviewcontroller.DetailModal = @[entry.Name,entry.Origin,entry.Age,entry.Height,entry.Weight,entry.Game,entry.Image];
    }
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
