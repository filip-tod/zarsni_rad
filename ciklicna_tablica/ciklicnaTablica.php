<?PHP
$ime = isset($_POST['a']) ? $_POST['b'] : '';
$ime = isset($_POST['b']) ? $_POST['b'] : '';
?>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
 
    
  </head>
  <body>
  <div class="cik-text">
  <h4 class="title">CIKLIČKA TABLICA</h4>
    <br> 
    <span class="text">Korisnik unosi 2 polja: broj <b>redova</b> i broj <b>stupaca</b>, ispod postoji gumb <b>"KREIRAJ TABLICU"</b>. Nakon submita pored navedene forme prikazuje
            se tablica zatraženih dimenzija gdje su polja popunjena brojevima.Brojevi su popunjeni sljedećom logikom:
            <br/>
            + BROJ 1 SE NALAZI U DONJEM DESNOM KUTU
            <br>
            + POLJA TABLICE SE POPUNJAVAJU SPIRALNO CIKLIČKI U KRUG U SMJERU KAZALJKE NA SATU
        </span>
  </div>

  


<div class="tabla">
<div class="input-text"> INPUT </div>
    <div class="input">
    
        <form action="" method="POST">
            <div class="txt1">Broj redaka</div>
        <input type="number" class="unos" name="a" value="<?php echo $rows; ?>">
            <div class="txt1">Broj stupaca</div>
        <input type="number" class="unos" name="b" value="<?php echo $columns; ?>">
        <br>
        <input type="submit" class="klik" name="predaj" value="KREIRAJ TABLICU">
        </form>
    </div>

    <div class="output-text"> OUTPUT </div>     
</div>

<?php 

            $rows=$_POST['a'];
            $columns=$_POST['b'];

            $maxRow=$rows-1;
            $maxCol=$columns-1;
            $ispis=1;
            $matrica=[];
            $minCol=0;
            $minRow=0;
            while ($ispis <= $rows*$columns) 
            {
                for($j=$maxCol; $j >= $minCol; $j--)
                {
                    $matrica[$maxRow][$j] = $ispis++;
                }
                    $maxRow--;
                    if ($ispis > $rows*$columns){
                        break;
                    } 

                for ($i=$maxRow; $i >= $minRow ;$i--) 
                { 
                    $matrica[$i][$minCol] = $ispis++;
                }
                    $minCol++;
                    if ($ispis > $rows*$columns){
                        break; 
                    } 

                for ($j=$minCol; $j <= $maxCol; $j++) 
                { 
                    $matrica[$minRow][$j] = $ispis++;
                }
                    $minRow++;
                    if ($ispis > $rows*$columns){
                        break;
                    } 
                for ($i=$minRow; $i <= $maxRow; $i++) 
                { 
                    $matrica[$i][$maxCol] = $ispis++;
                }
                    $maxCol--;    
            
            }

?>

<table class="tab">
<?php 
        for($i=0;$i<$rows;)
        {
          echo '<tr>';
            for ($j=0; $j < $columns;) 
            { 
              echo '<td>'. $matrica[$i][$j] .'</td>';
              $j++;
            }
            echo '</tr>';
            $i++;
        } 
        if (isset($_POST['predaj']));
?>
</table>

  </body>
</html>