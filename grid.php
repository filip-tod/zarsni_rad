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
        <div class="cell  small-6">
          <div class="success callout">
            WEST
          </div>
        </div>
        <div class="cell  small-6">
          <div class="warning callout">  
            EAST
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
