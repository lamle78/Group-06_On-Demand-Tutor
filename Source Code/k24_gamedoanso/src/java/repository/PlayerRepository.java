/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository;

import model.Player;

/**
 *
 * @author Long Dinh
 */
public class PlayerRepository {
    public Player getPlayerByUsername(String username) {
        return new Player("admin", "1234");
    }
}
