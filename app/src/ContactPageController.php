<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\RequiredFields;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\Form;
use SilverStripe\Control\Email\Email;

use PageController;


class ContactPageController extends PageController
{
    private static $allowed_actions = ['ContactForm'];

    public function ContactForm()
    {

        $nameField = TextField::create('Name','Your Name: *');
        $nameField->setFieldHolderTemplate('CustomTextField_Holder');
        $emailField = EmailField::create('Email', 'E-Mail: *');
        $emailField->setFieldHolderTemplate('CustomEmailField_Holder');
        $textareaField = TextareaField::create('Message', 'Tell Us Everything');
        $textareaField->setFieldHolderTemplate('CustomTextareaField_Holder');

        $fields = new FieldList(
            $nameField, $emailField, $textareaField
        );

        $actions = new FieldList(
            FormAction::create('SendContactForm', 'Submit')
        );

        $validator = new RequiredFields('Name', 'Email');

        $form = new Form($this, 'ContactForm', $fields, $actions, $validator);

        return $form;
        
    }

    public function SendContactForm($data, $form){
        $email = new Email();

        $email->setTo('test@example.com');
        $email->setFrom($data['Email']);
        $email->setSubject("Contact Message from {$data["Name"]}");

        $messageBody = "
        <p>Name: {$data["Name"]}</p>
        <p>Message: {$data["Message"]}
        ";

        $email->setBody($messageBody);
        $email->send();
        return [
            'Content' => '<p>Thank you for your message.</p>',
            'ContactForm' => ''
        ];

    }
}

