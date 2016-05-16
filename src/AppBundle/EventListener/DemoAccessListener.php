<?php

namespace AppBundle\EventListener;


use Symfony\Component\EventDispatcher\GenericEvent;

class DemoAccessListener
{
    public function checkUserOrGroup(GenericEvent $event) {
        if (!$event->hasArgument('pk')) {
            return;
        }

        $pk = $event->getArgument('pk');
        if (1 === (int)$pk['id']) {
            //only admin users have no access
            throw new \Exception('Access denied to admin user/group in demo.');
        }

    }
}