

#import "YouViewController.h"

@implementation YouViewController
@synthesize nameLabel;
@synthesize originLabel;
@synthesize serviceLabel;
@synthesize destinationLabel;
@synthesize etaLabel;
@synthesize originHeader;
@synthesize serviceHeader;
@synthesize destinationHeader;
@synthesize etaHeader;
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
    
    
    ///////////////////////////////////////////////////////////////////// Fonts
    UIFont* myFont = [UIFont fontWithName:@"AkzidenzLight" size:20];
    nameLabel.font = myFont;
    originLabel.font = myFont;
    serviceLabel.font = myFont;
    destinationLabel.font = myFont;
    etaLabel.font = myFont;
    
    UIFont *headFont = [UIFont fontWithName:@"Akzidenz" size:20];
    originHeader.font = headFont;
    originHeader.text =@"ORIGIN";
    serviceHeader.font = headFont;
    serviceHeader.text =@"SERVICE";
    destinationHeader.font = headFont;
    destinationHeader.text = @"DESTINATION";
    etaHeader.font = headFont;
    etaHeader.text = @"E.T.A";
    
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
-(UITableViewCell*) tableView:(UITableView *)tableview cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellIdentifier = @"packageCell";
    UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:cellIdentifier];
    Package* currentPackage = [packages objectAtIndex:indexPath.row];
    
    nameLabel.text = currentPackage.name;
    originLabel.text = currentPackage.origin;
    destinationLabel.text = currentPackage.destination;
    serviceLabel.text = currentPackage.service;
    etaLabel.text = currentPackage.eta;
    return cell;


}

- (void)viewDidUnload
{
    [self setYouTableView:nil];
    [self setYouTableView:nil];
    [self setNameLabel:nil];
    [self setOriginLabel:nil];
    [self setServiceLabel:nil];
    [self setDestinationLabel:nil];
    [self setEtaLabel:nil];
    [self setOriginHeader:nil];
    [self setServiceHeader:nil];
    [self setDestinationHeader:nil];
    [self setEtaHeader:nil];
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
