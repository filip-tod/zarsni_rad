<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <?php require_once 'zaglavlje.php'; ?>
  </head>
<body>

    <div class="grid-container">

    <?php include_once 'izbornik.php'; ?>

    <!-- Start tijelo -->
      <div class="grid-x grid-margin-x" id="tijelo">
        <div class="cell  medium-6">
          <div class="success callout">
            EAST
            <a href="nbaTimoviEast.php"><img class="cover" src="slike/east.png" alt="east" ></a>
            </div>
          </div>
        <div class="cell  medium-6" >
         <div class="warning callout">
            WEST
            <a href="nbaTimoviWest.php" id="west"><img class="cover" src="slike/west.png" alt="west" > </a>
          </div>
        </div>
      </div>

    <!-- End tijelo -->

    <?php 
    // čitati https://www.tutorialrepublic.com/php-tutorial/php-include-files.php
    require_once 'podnozje.php'; ?>

     
    </div>

    <?php require_once 'jsskripte.php'; ?>
    
  </body>
</html>
