CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `REMOTEUSER`@`%` 
    SQL SECURITY DEFINER
VIEW IF NOT EXISTS `SETTINGSDB`.`otp` AS
    SELECT 
        `SETTINGSDB`.`token`.`SerialNo` AS `SerialNo`,
        `SETTINGSDB`.`token`.`Email` AS `Email`,
        `SETTINGSDB`.`token`.`OTP` AS `OTP`,
        `SETTINGSDB`.`token`.`GeneratedTime` AS `GeneratedTime`
    FROM
        `SETTINGSDB`.`token`
    WHERE
        `SETTINGSDB`.`token`.`GeneratedTime` > CURRENT_TIMESTAMP() - INTERVAL 10 MINUTE 