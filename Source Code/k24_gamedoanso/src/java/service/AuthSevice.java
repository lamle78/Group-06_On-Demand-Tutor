/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import model.Player;
import repository.PlayerRepository;

/**
 *
 * @author Long Dinh
 */
public class AuthSevice {

    PlayerRepository playerRepository = new PlayerRepository();

    public Player login(String username, String password) {
        Player player = playerRepository.getPlayerByUsername(username);
        if (player != null && password.equals(player.getPassword())) {
            return player;
        } else {
            return null;
        }
    }
}
