<?php 

    // Tenha uma logica
    try {

        echo '<h3> *** Try *** </h3>';
        $sql = 'Select * from clientes';
        //mysql_query($sql);

    } catch (Error $e)  {

        echo '<h3> *** Catch *** </h3>';
        echo $e;

    } finally {
        echo '<h3> *** Finally *** </h3>';
    }


?>