<?php 
$ime = isset($_GET['ime']) ? $_GET['ime'] : '';
$prezime = isset($_GET['prezime']) ? $_GET['prezime'] : '';
?>
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
      <div class="cell">
        <div class="callout">

        <h3 style="text-align:center">Nakon ovog koraka postaješ član našeg NBA tima :)</h3>
          

          <form action="" method="get">
            <!-- najbolja praksa -->
            <label for="ime" style="text-align:center">Ime</label>
            <input  placeholder="Ivan" type="text" id="ime" name="ime"
            value="<?=$ime?>" />
            </label>
          

            <label for="prezime" style="text-align:center">Prezime</label>
            <input placeholder="Horvat" type="text" id="prezime" name="prezime"
            value="<?=$prezime?>" />  
            </label>

          
           <p style="text-align: center">lozinka</p>
            <input 
            placeholder="ivan.horvat@tvrtka.hr"
            type="email" id="email" name="email" />
        
            <label for="lozinka" style="text-align:center">Lozinka</label>
            <input
            required 
            placeholder="******"
            type="password" id="lozinka" name="lozinka" />
          
          

            <!-- odabiri -->
            <p style="text-align:center">Tko je G.O.A.T.? </p>
            <input  type="radio" id="Lebron" name="gd" value="1" 
            />
            <label for="Lebron">LeBron James</label>

            <hr/>
            
            <input type="radio" id="Jordan" name="gd" value="2"  checked="checked"/>
            <label for="Jordan">Michael Jordan</label> 
            
            <hr/>
            
            <input type="radio" id="kobe" name="gd" value="3" />
            <label for="kobe">Kobe Bryant</label> 
            
          

            <label for="opis" style="text-align:left">Opiši sebe i zašto voliš košarku :)</label>
            <textarea name="opis" id="opis" cols="30" rows="5"></textarea>
            
            <hr />
            
          
            
            <input  type="submit" value="Predaj">
          
          </form>

          <pre>
            <?php 
            var_dump($_GET);

            ?>
            </pre>


        </div>
      </div>
    </div>
    <!-- End tijelo -->
    <?php 
    require_once 'podnozje.php'; ?>
    </div>
    <?php require_once 'jsskripte.php'; ?>
  </body>
</html>