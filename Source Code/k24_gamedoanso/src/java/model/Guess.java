/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.time.LocalDateTime;

/**
 *
 * @author Long Dinh
 */
public class Guess {
    private int guessNumber;
    private LocalDateTime guessTime;
    private String gameID;
    private int guessResult;

    public int getGuessNumber() {
        return guessNumber;
    }

    public LocalDateTime getGuessTime() {
        return guessTime;
    }

    public String getGameID() {
        return gameID;
    }

    public int getGuessResult() {
        return guessResult;
    }

    public void setGuessNumber(int guessNumber) {
        this.guessNumber = guessNumber;
    }

    public void setGuessTime(LocalDateTime guessTime) {
        this.guessTime = guessTime;
    }

    public void setGameID(String gameID) {
        this.gameID = gameID;
    }

    public void setGuessResult(int guessResult) {
        this.guessResult = guessResult;
    }
    
    
    
}
