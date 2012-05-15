

#import "YouViewController.h"

@implementation YouViewController
@synthesize youTableView, packages, enrouteCount, sentCount, receivedCount;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    //PACKTRACK ///////////////////////////////
    ///////////////////////////////////////////////////////////////////// Background
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background.jpeg"]];
    self.view.backgroundColor = background;
    
    
    ///////////////////////////////////////////////////////////////////// 
    Package *cb2Lamp = [[Package alloc] init];
    cb2Lamp.name =@"CB2Lamp";
    cb2Lamp.origin = @"Phoenix, AZ";
    cb2Lamp.destination = @"New York, NY";
    cb2Lamp.eta = @"05.03.2012";
    cb2Lamp.service = @"FedEx 2 Day";
    cb2Lamp.onTime = true;
    cb2Lamp.type = 1;
    
    Package *speakers = [[Package alloc] init];
    speakers.name = @"Speakers";
    speakers.origin = @"London, UK";
    speakers.destination = @"New York, NY";
    speakers.eta = @"05.08.2012";
    speakers.service = @"DHL";
    speakers.onTime = false;
    speakers.type = 2;
    
    self.packages = [[NSMutableArray alloc] initWithObjects:cb2Lamp, speakers, nil];
    
    ///////////////////////////////////////////////////////////////////// Mini Stats
    
    for (int i=0; i<packages.count; i++) {
        Package* tempPackage;
        if (tempPackage.type == 1) {
            enrouteCount++;
        }
        if (tempPackage.type == 2) {
            sentCount ++;
        }
        if (tempPackage.type == 3) {
            receivedCount++;
        }
    }
    ministats.enroute.text = [NSString stringWithFormat:@"%i ENROUTE", enrouteCount];
    ministats.sent.text = [NSString stringWithFormat:@"%i ENROUTE", sentCount];
    ministats.received.text = [NSString stringWithFormat:@"%i ENROUTE", receivedCount];

    
    
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)youTableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return packages.count;
}

-(UITableViewCell*) youTableView:(UITableView *)tableview cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIFont* myFont = [UIFont fontWithName:@"AkzidenzLight" size:20];

    NSString* cellIdentifier = @"packageCell";
    UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:cellIdentifier];
    Package* currentPackage = [packages objectAtIndex:indexPath.row];
    
    UILabel* nameLabel = (UILabel*)[cell viewWithTag:1];
    nameLabel.font = myFont;
    nameLabel.text = currentPackage.name;
    
    UILabel * originLabel = (UILabel*) [cell viewWithTag:2];
    originLabel.font = myFont;
    originLabel.text = currentPackage.origin;
    
    UILabel *serviceLabel = (UILabel*) [cell viewWithTag:3];
    serviceLabel.font = myFont;
    serviceLabel.text = currentPackage.service;
    
    UILabel *destinationLabel = (UILabel*) [cell viewWithTag:4];
    destinationLabel.font = myFont;
    destinationLabel.text = currentPackage.destination;
    
    UILabel *etaLabel = (UILabel*) [cell viewWithTag:5];
    etaLabel.font = myFont;
    etaLabel.text = currentPackage.eta;
    
    UIFont *headFont = [UIFont fontWithName:@"Akzidenz" size:20];
    UILabel *originHeader = (UILabel*) [cell viewWithTag:6];
    originHeader.font = headFont;
    originHeader.text = @"ORIGIN";
    
    UILabel *serviceHeader = (UILabel*) [cell viewWithTag:7];
    serviceHeader.font = headFont;
    serviceHeader.text = @"SERVICE";
    
    UILabel *destinationHeader = (UILabel*) [cell viewWithTag:8];
    destinationHeader.font = headFont;
    destinationHeader.text = @"DESTINATION";
    
    UILabel *etaHeader = (UILabel*) [cell viewWithTag:9];
    etaHeader.font = headFont;
    etaHeader.text = @"E.T.A.";

    return cell;


}

- (void)viewDidUnload
{
    [self setYouTableView:nil];
    [self setYouTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
